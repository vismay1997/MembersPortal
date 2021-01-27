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
    <decorator:content placeholder="title">Member Registation Form</decorator:content>
    <decorator:content placeholder="pagetitle">Member Registation Form</decorator:content>
    <decorator:content placeholder="content">
        <form:form modelAttribute="databean" class="form"  enctype="multipart/form-data">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Full Name:</label>
                        <form:input path="fullName" class="form-control"/>
                        <form:errors path="fullName" cssClass="text-danger"/>
                    </div>
                    <div class="col-lg-6">
                        <label>Birth Date:</label>
                        <form:input path="birthDate" type="date" class="form-control" placeholder="Enter Your BirthDate"/>
                        <form:errors path="birthDate" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Chief of Family:</label>
                        <form:select path="chiefOfFamily" class="form-control selectpicker">
                            <form:option  value="Yes" label="Yes"></form:option>
                            <form:option value="No" label="No"></form:option>
                        </form:select>
                        <form:errors path="chiefOfFamily" cssClass="text-danger"/>
                    </div>
                    <div class="col-lg-6">
                        <label>Member Id:</label>
                        <form:input path="chiefName" class="form-control" placeholder="Enter Member Id"/>
                        <form:errors path="chiefName" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Age:</label>
                        <form:input path="age" class="form-control" placeholder="Enter Your Age"/>
                        <form:errors path="age" cssClass="text-danger"/>
                    </div>
                    <div class="col-lg-6">
                        <label>Marquee Image / Logo:</label>
                        <div class="custom-file">
                            <form:hidden path="image" />
                            <input type="file" name="profilePic" class="custom-file-input" id="customFile"/>
                            <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                        <form:errors path="image" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Phone Number:</label>
                        <form:input path="phoneNo" class="form-control"/>
                        <form:errors path="phoneNo" cssClass="text-danger"/>
                    </div>
                    <div class="col-lg-6">
                        <label>Mobile No:</label>
                        <form:input path="mobileNo" class="form-control" placeholder="Enter Your Mobile No."/>
                        <form:errors path="mobileNo" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Blood Group:</label>
                        <form:select path="bloodGroup" class="form-control selectpicker">
                            <form:options items="${bloodGroupList}"></form:options>
                        </form:select>
                        <form:errors path="bloodGroup" cssClass="text-danger"/>
                    </div>
                    <div class="col-lg-6">
                        <label>Email Address:</label>
                        <form:input path="emailAddress" class="form-control" placeholder="Enter Your Email Address"/>
                        <form:errors path="emailAddress" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Marital Status:</label>
                        <form:select path="maritalStatus" class="form-control selectpicker">
                            <form:options items="${maritalStatusList}"></form:options>
                        </form:select>
                        <form:errors path="maritalStatus" cssClass="text-danger"/>
                    </div>
                    <div class="col-lg-6">
                        <label>Pin Code :</label>
                        <form:input path="pinCode" class="form-control" placeholder="Enter Your Age"/>
                        <form:errors path="pinCode" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Address :</label>
                        <form:textarea  path="address" class="form-control" name="memo" placeholder="Enter Address" rows="3"></form:textarea>
                        <form:errors path="address" cssClass="text-danger"/>
                    </div>
                    <div class="col-lg-6">
                        <label>Gender :</label>
                        <form:select path="gender" class="form-control selectpicker">
                            <form:option  value="Male" label="Male"></form:option>
                            <form:option value="Female" label="Female"></form:option>
                            <form:option value="Not Given" label="Not Given"></form:option>
                        </form:select>
                        <form:errors path="pinCode" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Village :</label>
                        <form:input  path="village" class="form-control" name="memo" placeholder="Enter Address" rows="3"></form:input>
                        <form:errors path="village" cssClass="text-danger"/>
                    </div>
                    <div class="col-lg-6">
                        <label>Street :</label>
                        <form:input  path="street" class="form-control" name="memo" placeholder="Enter Address" rows="3"></form:input>
                        <form:errors path="street" cssClass="text-danger"/>
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
                                        Qualification Information
                                    </h3>
                                </div>
                                <div class="card-toolbar">
                                    <button type="button" class="btn btn-primary mr-2 add-more-qualification">Add Qualification</button>
                                    <button type="button" class="btn btn-primary mr-2 delete-qualification">Remove Qualification</button>

                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th><input class='check_all' type='checkbox' class="form-control" onclick="select_all()"/></th>
                                        <th>SR. No</th>
                                        <th>Name Of Course:</th>
                                        <th>School / University</th>
                                        <th>Passing Year</th>
                                        <th>Percentage:</th>
                                    </tr>
                                    </thead>
                                    <tbody class="qualification-body">
                                    <c:forEach items="${databean.qualificationInformations}" var="qi" varStatus="i">
                                        <tr>
                                            <td><input type='checkbox' class='qualification_case' class="form-control" /></td>
                                            <td><span class="row_no">${i.index+1}</span></td>
                                            <td>
                                                <form:input path="qualificationInformations[${i.index}].nameOfCourse" class="form-control"/>
                                                <form:errors path="qualificationInformations[${i.index}].nameOfCourse" cssClass="text-danger"/>
                                            </td>
                                            <td>
                                                <form:input path="qualificationInformations[${i.index}].instituteName" class="form-control"/>
                                                <form:errors path="qualificationInformations[${i.index}].instituteName" cssClass="text-danger"/>
                                            </td>
                                            <td>
                                                <form:input path="qualificationInformations[${i.index}].passingYear" class="form-control"/>
                                                <form:errors path="qualificationInformations[${i.index}].passingYear" cssClass="text-danger"/>
                                            </td>
                                            <td>
                                                <form:input path="qualificationInformations[${i.index}].percentage" class="form-control"/>
                                                <form:errors path="qualificationInformations[${i.index}].percentage" cssClass="text-danger"/>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card card-custom">
                            <div class="card-header">
                                <div class="card-title">
                                        <span class="card-icon">
                                            <i class="flaticon2-chat-1 text-primary"></i>
                                        </span>
                                    <h3 class="card-label">
                                        Revenue Information
                                    </h3>
                                </div>
                                <div class="card-toolbar">
                                    <button type="button" class="btn btn-primary mr-2 add-more-revenue">Add Experience</button>
                                    <button type="button" class="btn btn-secondary delete_revenue">Remove Experience</button>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th><input class='check_all' type='checkbox' class="form-control" onclick="select_all()"/></th>
                                        <th>SR. No</th>
                                        <th>Type OF Revenue</th>
                                        <th>Government / Private</th>
                                        <th>Experience in Years</th>
                                        <th>Working Place</th>
                                    </tr>
                                    </thead>
                                    <tbody class="revenue-body">
                                    <c:forEach items="${databean.revenueInformations}" var="qi" varStatus="i">
                                        <tr>
                                            <td><input type='checkbox' class='revenue_case' class="form-control" /></td>
                                            <td><span class="row_no">${i.index+1}</span></td>
                                            <td>
                                                <form:input path="revenueInformations[${i.index}].typeOFRevenue" class="form-control"/>
                                                <form:errors path="revenueInformations[${i.index}].typeOFRevenue" cssClass="text-danger"/>
                                            </td>
                                            <td>
                                                <form:input path="revenueInformations[${i.index}].typeOfJob" class="form-control"/>
                                                <form:errors path="revenueInformations[${i.index}].typeOfJob" cssClass="text-danger"/>
                                            </td>
                                            <td>
                                                <form:input path="revenueInformations[${i.index}].experience" class="form-control"/>
                                                <form:errors path="revenueInformations[${i.index}].experience" cssClass="text-danger"/>
                                            </td>
                                            <td>
                                                <form:input path="revenueInformations[${i.index}].workingPlace" class="form-control"/>
                                                <form:errors path="revenueInformations[${i.index}].workingPlace" cssClass="text-danger"/>
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
                        <button type="submit" class="btn btn-primary mr-2">Save</button>
                        <button type="reset" class="btn btn-secondary">Cancel</button>
                    </div>
                </div>
            </div>
        </form:form>
    </decorator:content>
    <decorator:content placeholder="scripts">
        <script type="text/javascript">
            function select_all() {
                $('input[class=case]:checkbox').each(function(){
                    if($('input[class=check_all]:checkbox:checked').length == 0){
                        $(this).prop("checked", false);
                    } else {
                        $(this).prop("checked", true);
                    }
                });
            }

            $(document).ready(function() {
                var index = $('.qualification-body').length;
                var index_revenue = $('.revenue-body').length;

                $(".add-more-qualification").click(function(){
                    index++;
                    var data="<tr><td><input type='checkbox' class='qualification_case' class='form-control' /></td><td><span class='row_no'>"+index+"</span></td><td><input name='qualificationInformations["+index+"].nameOfCourse' class='form-control'/></td><td><input name='qualificationInformations["+index+"].instituteName' class='form-control'/></td><td><input name='qualificationInformations["+index+"].passingYear' class='form-control'/></td><td><input name='qualificationInformations["+index+"].percentage' class='form-control'/></td></tr>";
                    $(".qualification-body").append(data);

                });

                $(".add-more-revenue").click(function(){
                    index_revenue++;
                    var data="<tr><td><input type='checkbox' class='revenue_case' class='form-control' /></td><td><span class='row_no'>"+index_revenue+"</span></td><td><input name='revenueInformations["+index_revenue+"].typeOFRevenue' class='form-control'/></td><td><input name='revenueInformations["+index_revenue+"].typeOfJob' class='form-control'/></td><td><input name='revenueInformations["+index_revenue+"].experience' class='form-control'/></td><td><input name='revenueInformations["+index_revenue+"].workingPlace' class='form-control'/></td></tr>";
                    $(".revenue-body").append(data);

                });

                $(".delete-qualification").on('click', function() {
                    $('.qualification_case:checkbox:checked').parents("tr").remove();
                    $('.row_no').each((k,ele)=>{
                        $(ele).html(k+1+'.')
                    });
                    var row=0;
                    $(".qualification-body tr").each(function() {
                        $(this).find("td:nth-child(3) input").attr('name','qualificationInformations['+row+'].nameOfCourse');
                        $(this).find("td:nth-child(4) input").attr('name','qualificationInformations['+row+'].instituteName');
                        $(this).find("td:nth-child(5) input").attr('name','qualificationInformations['+row+'].passingYear');
                        $(this).find("td:nth-child(6) input").attr('name','qualificationInformations['+row+'].percentage');
                        $(this).find("td:nth-child(3) input").attr('id','qualificationInformations['+row+'].nameOfCourse');
                        $(this).find("td:nth-child(4) input").attr('id','qualificationInformations['+row+'].instituteName');
                        $(this).find("td:nth-child(5) input").attr('id','qualificationInformations['+row+'].passingYear');
                        $(this).find("td:nth-child(6) input").attr('id','qualificationInformations['+row+'].percentage');
                        $(this).find("td:nth-child(3) input").attr('path','qualificationInformations['+row+'].nameOfCourse');
                        $(this).find("td:nth-child(4) input").attr('path','qualificationInformations['+row+'].instituteName');
                        $(this).find("td:nth-child(5) input").attr('path','qualificationInformations['+row+'].passingYear');
                        $(this).find("td:nth-child(6) input").attr('path','qualificationInformations['+row+'].percentage');
                        row++;
                    });
                });

                $(".delete_revenue").on('click', function() {
                    $('.revenue_case:checkbox:checked').parents("tr").remove();
                    $('.row_no').each((k,ele)=>{
                        $(ele).html(k+1+'.')
                    });
                    var row=0;
                    $(".revenue-body tr").each(function() {
                        $(this).find("td:nth-child(3) input").attr('name','revenueInformations['+row+'].typeOFRevenue');
                        $(this).find("td:nth-child(4) input").attr('name','revenueInformations['+row+'].typeOfJob');
                        $(this).find("td:nth-child(5) input").attr('name','revenueInformations['+row+'].experience');
                        $(this).find("td:nth-child(6) input").attr('name','revenueInformations['+row+'].workingPlace');
                        $(this).find("td:nth-child(3) input").attr('id','revenueInformations['+row+'].typeOFRevenue');
                        $(this).find("td:nth-child(4) input").attr('id','revenueInformations['+row+'].typeOfJob');
                        $(this).find("td:nth-child(5) input").attr('id','revenueInformations['+row+'].experience');
                        $(this).find("td:nth-child(6) input").attr('id','revenueInformations['+row+'].workingPlace');
                        $(this).find("td:nth-child(3) input").attr('path','revenueInformations['+row+'].typeOFRevenue');
                        $(this).find("td:nth-child(4) input").attr('path','revenueInformations['+row+'].typeOfJob');
                        $(this).find("td:nth-child(5) input").attr('path','revenueInformations['+row+'].experience');
                        $(this).find("td:nth-child(6) input").attr('path','revenueInformations['+row+'].workingPlace');
                        row++;
                    });
                });

            });


        </script>
    </decorator:content>
</decorator:decorate>