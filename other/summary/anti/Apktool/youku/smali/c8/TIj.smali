.class public interface abstract Lc8/TIj;
.super Ljava/lang/Object;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/SIj;
    }
.end annotation


# static fields
.field public static final FAIL:I = 0x2

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final SUCCESS:I = 0x1

.field public static final UNAUTHORIZED:I = 0x4


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getDataString()Ljava/lang/String;
.end method

.method public abstract getErrorData()Ljava/lang/String;
.end method

.method public abstract getFailReason()Ljava/lang/String;
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract isCancel()Z
.end method

.method public abstract parse(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V
.end method

.method public abstract request(Lcom/youku/network/HttpIntent;Lc8/SIj;Ljava/lang/String;)V
.end method

.method public abstract setGetCookie(Z)V
.end method

.method public abstract setParseErrorCode(Z)V
.end method

.method public abstract setSaveCookie(Z)V
.end method
