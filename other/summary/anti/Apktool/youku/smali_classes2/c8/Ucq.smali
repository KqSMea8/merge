.class public Lc8/Ucq;
.super Lc8/Wcq;
.source "HandshakeImpl1Server.java"

# interfaces
.implements Lc8/Ycq;


# instance fields
.field private httpstatus:S

.field private httpstatusmessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lc8/Wcq;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getHttpStatus()S
    .locals 1

    .prologue
    .line 17
    iget-short v0, p0, Lc8/Ucq;->httpstatus:S

    return v0
.end method

.method public getHttpStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lc8/Ucq;->httpstatusmessage:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpStatus(S)V
    .locals 0
    .param p1, "status"    # S

    .prologue
    .line 25
    iput-short p1, p0, Lc8/Ucq;->httpstatus:S

    .line 26
    return-void
.end method

.method public setHttpStatusMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lc8/Ucq;->httpstatusmessage:Ljava/lang/String;

    .line 22
    return-void
.end method
