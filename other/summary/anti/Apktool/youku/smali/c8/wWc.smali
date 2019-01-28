.class public interface abstract Lc8/wWc;
.super Ljava/lang/Object;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vWc;
    }
.end annotation


# static fields
.field public static final FAIL:I = 0x2

.field public static final SUCCESS:I = 0x1

.field public static final UNAUTHORIZED:I = 0x4


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getDataString()Ljava/lang/String;
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

.method public abstract request(Lcom/baseproject/network/HttpIntent;Lc8/vWc;)V
.end method

.method public abstract setCookie(Ljava/lang/String;)V
.end method
