package com.bccshop.po;

import java.util.Objects;

public class AjaxResult {
    private String success;
    private String message;
    private Object object;

    public AjaxResult(String success, String message, Object object) {
        this.success = success;
        this.message = message;
        this.object = object;
    }

    public AjaxResult() {
        super();
    }

    public String getSuccess() {
        return success;
    }

    public void setSuccess(String success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AjaxResult that = (AjaxResult) o;
        return Objects.equals(success, that.success) &&
                Objects.equals(message, that.message) &&
                Objects.equals(object, that.object);
    }

    @Override
    public int hashCode() {
        return Objects.hash(success, message, object);
    }

    @Override
    public String toString() {
        return "AjaxResult{" +
                "success='" + success + '\'' +
                ", message='" + message + '\'' +
                ", object=" + object +
                '}';
    }
}
