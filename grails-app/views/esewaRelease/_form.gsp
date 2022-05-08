<div class="form-group">
    <label><g:message code="releaseName"/></label>
    <g:textField name="releaseName" class="form-control" value="${esewaRelease?.releaseName}" placeholder="Please Enter the Release Name"/>
</div>

<div class="form-group">
    <label><g:message code="releaseVersion_code"/></label>
    <g:textField name="releaseVersion_code" class="form-control" value="${esewaRelease?.releaseVersion_code}" placeholder="Please Enter the Release Version"/>
</div>

<div class="form-group">
    <label><g:message code="releaseStatus"/></label>
    <g:field type="releaseStatus" name="releaseStatus" class="form-control" value="${esewaRelease?.releaseStatus}" placeholder="Please Enter the Release Status" >
    <option value="dev">Dev</option>
    <option value="qaDev">QADev</option>
    <option value="rc">RC</option>
    <option value="codeFreeze">CodeFreeze</option>
    <option value="ir">IR</option>
    <option value="prod">Prod</option>
    </g:field>
%{--    <UIHelper:renderErrorMessage fieldName="email" model="${member}" errorMessage="Your Email Address is not Valid / Already Exist in System"/>--}%
</div>

<div class="form-group">
    <label><g:message code="parentRelease"/></label>
    <g:textField name="parentRelease" class="form-control" value="${esewaRelease?.parentRelease}" placeholder="Please Enter the Previous Version"/>
</div>


<div class="form-group">
    <label><g:message code="createdDate"/></label>
    <g:textField name="createdDate" class="form-control" value="${esewaRelease?.createdDate}" placeholder="Please Enter the Creation Date"/>
</div>

<div class="form-group">
    <label><g:message code="startDate"/></label>
    <g:textField name="startDate" class="form-control" value="${esewaRelease?.startDate}" placeholder="Please Enter the Start Date"/>
</div>

<div class="form-group">
    <label><g:message code="endDate"/></label>
    <g:textField name="endDate" class="form-control" value="${esewaRelease?.endDate}" placeholder="Please Enter the End Date"/>
</div>




