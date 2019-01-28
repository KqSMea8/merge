.class public Lcom/youku/antitheftchain/exception/AntiTheftChainException;
.super Lcom/youku/antitheftchain/exception/BaseException;
.source "AntiTheftChainException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/oPg;ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Lc8/oPg;
    .param p2, "externalErrorCode"    # I
    .param p3, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/antitheftchain/exception/BaseException;-><init>(Lc8/oPg;ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lc8/oPg;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Lc8/oPg;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/youku/antitheftchain/exception/BaseException;-><init>(Lc8/oPg;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/youku/antitheftchain/exception/BaseException;Lc8/oPg;Ljava/lang/String;)V
    .locals 0
    .param p1, "subException"    # Lcom/youku/antitheftchain/exception/BaseException;
    .param p2, "errorCode"    # Lc8/oPg;
    .param p3, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/antitheftchain/exception/BaseException;-><init>(Lcom/youku/antitheftchain/exception/BaseException;Lc8/oPg;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lc8/oPg;ILjava/lang/String;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # Lc8/oPg;
    .param p3, "externalErrorCode"    # I
    .param p4, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/antitheftchain/exception/BaseException;-><init>(Ljava/lang/Throwable;Lc8/oPg;ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lc8/oPg;Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # Lc8/oPg;
    .param p3, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/antitheftchain/exception/BaseException;-><init>(Ljava/lang/Throwable;Lc8/oPg;Ljava/lang/String;)V

    .line 44
    return-void
.end method
