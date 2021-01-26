<%--
  Created by Vismay Patel.
  Position: Sr. Java Developer
  Education: Be Computer Engineer
  Date: 1/23/2021
  Time: 12:19 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="decorator" uri="http://claudiushauptmann.com/jsp-decorator/" %>

<decorator:decorate filename="template.jsp">
    <decorator:content placeholder="title">Committee Registration Form</decorator:content>
    <decorator:content placeholder="pagetitle">Committee Registration Form</decorator:content>
    <decorator:content placeholder="content">
        <form:form  modelAttribute="databean"  enctype="multipart/form-data" class="form">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Commitee Title</label>
                        <form:input  path="commiteeTitle"  class="form-control" placeholder="Enter full name"/>
                        <form:errors path="commiteeTitle" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Commitee Image / Logo:</label>
                        <div class="custom-file">
                            <form:hidden  path="logo"  class="form-control" placeholder="Enter full name"/>
                            <input name="profilePic" type="file" class="custom-file-input" id="customFile"/>
                            <label class="custom-file-label" for="customFile">Choose file</label>
                            <form:errors path="logo" cssClass="text-danger"/>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Commitee Description:</label>
                        <form:textarea class="form-control" path="description" placeholder="Enter a menu" rows="3"></form:textarea>
                        <form:errors path="description" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <div class="card card-custom">
                            <div class="card-header">
                                <div class="card-title">
                                                            <span class="card-icon">
                                                                <i class="flaticon2-chat-1 text-primary"></i>
                                                            </span>
                                    <h3 class="card-label">
                                        Commitee Members Information
                                    </h3>
                                </div>
                                <div class="card-toolbar">
                                    <button type="button" class="btn btn-primary mr-2 add-more-commitee">Add Commitee Member</button>
                                    <button type="button" class="btn btn-secondary delete-qualification">Remove Commitee Member</button>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th><input class='check_all' type='checkbox' class="form-control" onclick="select_all()"/></th>
                                        <th>SR. No</th>
                                        <th>Committee Name</th>
                                        <th>Name Of Member</th>
                                    </tr>
                                    </thead>
                                    <tbody class="commitee-body">
                                    <c:forEach items="${databean.commiteeMembers}" var="qi" varStatus="i">
                                        <tr>
                                            <td><input type='checkbox' class='commitee_case' class="form-control" /></td>
                                            <td><span class="row_no">${i.index+1}</span></td>
                                            <td>
                                                <form:input path="commiteeMembers[${i.index}].nameOfCommitee" class="form-control"/>
                                                <form:errors path="commiteeMembers[${i.index}].nameOfCommitee" cssClass="text-danger"/>
                                            </td>
                                            <td>
                                                <form:input path="commiteeMembers[${i.index}].nameOfMember" class="form-control"/>
                                                <form:errors path="commiteeMembers[${i.index}].nameOfMember" cssClass="text-danger"/>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-lg-8">
                        <button type="submit" class="btn btn-primary mr-2">Register Commitee</button>
                        <button type="reset" class="btn btn-secondary">Reset Form</button>
                    </div>
                </div>
            </div>
        </form:form>

    </decorator:content>
    <decorator:content placeholder="scripts">
        <script type="text/javascript">
            function select_all() {
                $('input[class=commitee_case]:checkbox').each(function(){
                    if($('input[class=check_all]:checkbox:checked').length == 0){
                        $(this).prop("checked", false);
                    } else {
                        $(this).prop("checked", true);
                    }
                });
            }

            $(document).ready(function() {
                var index = $('.commitee-body').length;

                $(".add-more-commitee").click(function(){
                    index++;
                    var data="<tr><td><input type='checkbox' class='commitee_case' class='form-control' /></td><td><span class='row_no'>"+index+"</span></td><td><input name='commiteeMembers["+index+"].nameOfCommitee' class='form-control'/></td><td><input name='commiteeMembers["+index+"].nameOfMember' class='form-control'/></td></tr>";
                    $(".commitee-body").append(data);

                });

                $(".delete-qualification").on('click', function() {
                    $('.commitee_case:checkbox:checked').parents("tr").remove();
                    $('.row_no').each((k,ele)=>{
                        $(ele).html(k+1+'.')
                    });
                    var row=0;
                    $(".commitee-body tr").each(function() {
                        $(this).find("td:nth-child(3) input").attr('name','commiteeMembers['+row+'].nameOfCommitee');
                        $(this).find("td:nth-child(4) input").attr('name','commiteeMembers['+row+'].nameOfMember');
                        $(this).find("td:nth-child(3) input").attr('id','commiteeMembers['+row+'].nameOfCommitee');
                        $(this).find("td:nth-child(4) input").attr('id','commiteeMembers['+row+'].nameOfMember');
                        $(this).find("td:nth-child(3) input").attr('path','commiteeMembers['+row+'].nameOfCommitee');
                        $(this).find("td:nth-child(4) input").attr('path','commiteeMembers['+row+'].nameOfMember');
                        row++;
                    });
                });
            });


        </script>
    </decorator:content>
</decorator:decorate>