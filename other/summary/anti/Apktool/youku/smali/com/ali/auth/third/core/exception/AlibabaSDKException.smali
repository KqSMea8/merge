.class public Lcom/ali/auth/third/core/exception/AlibabaSDKException;
.super Ljava/lang/RuntimeException;
.source "AlibabaSDKException.java"


# static fields
.field private static final serialVersionUID:J = 0x12d77bd0c6ccc1e6L


# instance fields
.field private message:Lc8/Mgb;


# direct methods
.method public constructor <init>(Lc8/Mgb;)V
    .locals 1
    .param p1, "message"    # Lc8/Mgb;

    .prologue
    .line 17
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/ali/auth/third/core/exception/AlibabaSDKException;->message:Lc8/Mgb;

    .line 19
    return-void

    .line 17
    :cond_0
    iget-object v0, p1, Lc8/Mgb;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lc8/Mgb;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Lc8/Mgb;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iput-object p1, p0, Lcom/ali/auth/third/core/exception/AlibabaSDKException;->message:Lc8/Mgb;

    .line 14
    return-void

    .line 12
    :cond_0
    iget-object v0, p1, Lc8/Mgb;->message:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getSDKMessage()Lc8/Mgb;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ali/auth/third/core/exception/AlibabaSDKException;->message:Lc8/Mgb;

    return-object v0
.end method
