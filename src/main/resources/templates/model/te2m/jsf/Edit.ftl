<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core"
      xmlns:p="http://primefaces.org/ui">

    <ui:composition>

        <p:dialog id="${bo.javaName}EditDlg" widgetVar="${bo.javaName}EditDialog" modal="true" resizable="false" appendTo="@(body)" header="${r"#{"}bundle.Edit${bo.javaName}Title}">
            <h:form id="${bo.javaName}EditForm">
                <h:panelGroup id="display">
                    <p:panelGrid columns="2" rendered="${r"#{"}${bo.javaName}Controller.selected != null}">
<#if bo.attributes??><#list bo.attributes as o>
                        <p:outputLabel value="${r"#{"}bundle.Edit${bo.javaName}Label_${o.javaName}}" for="${o.javaName}" />
                        <p:inputText id="${o.javaName}" value="${r"#{"}${bo.javaName}Controller.selected.${o.javaName}}" title="${r"#{"}bundle.Edit${bo.javaName}Title_${o.javaName}}" />
</#list></#if>
                    </p:panelGrid>
                    <p:commandButton actionListener="${r"#{"}${bo.javaName}Controller.update}" value="${r"#{"}bundle.Save}" update="display,:${bo.javaName}ListForm:datalist,:growl" oncomplete="handleSubmit(args, '${bo.javaName}EditDialog');"/>
                    <p:commandButton value="${r"#{"}bundle.Cancel}" onclick="${bo.javaName}EditDialog.hide()"/>
                </h:panelGroup>
            </h:form>
        </p:dialog>

    </ui:composition>
</html>
