<div class="form-group">
    <label><g:message code="id"/> *</label>
    <g:textField name="id" class="form-control" value="${esewaRelease?.id}" placeholder="Please Enter ID"/>
</div>

<div class="form-group">
    <label><g:message code="releaseVersion"/></label>
    <g:textField name="releaseVersion" class="form-control" value="${esewaRelease?.releaseVersion}" placeholder="Please Enter the Release Version"/>
</div>

<div class="form-group">
    <label><g:message code="environment"/></label>
    <g:field type="environment" name="environment" class="form-control" value="${esewaRelease?.email}" placeholder="Please Enter the Enviromnent" >
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
    <label><g:message code="startDate"/></label>
    <g:textField name="startDate" class="form-control" value="${esewaRelease?.startDate}" placeholder="Please Enter the Start Date"/>
</div>

<div class="form-group">
    <label><g:message code="endDate"/></label>
    <g:textField name="endDate" class="form-control" value="${esewaRelease?.endDate}" placeholder="Please Enter the End Date"/>
</div>



