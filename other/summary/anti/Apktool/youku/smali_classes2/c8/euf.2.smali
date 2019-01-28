.class public final Lc8/euf;
.super Ljava/lang/Object;
.source "ReportAckUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fuf;->asyncReportUpdateAck(ZLjava/lang/Object;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$isIndexReport:Z

.field final synthetic val$reqBodyObj:Ljava/lang/Object;

.field final synthetic val$reqRetryNum:I


# direct methods
.method constructor <init>(ZILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lc8/euf;->val$isIndexReport:Z

    iput p2, p0, Lc8/euf;->val$reqRetryNum:I

    iput-object p3, p0, Lc8/euf;->val$reqBodyObj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 29
    new-instance v0, Lc8/duf;

    const/4 v2, 0x0

    iget-boolean v1, p0, Lc8/euf;->val$isIndexReport:Z

    if-eqz v1, :cond_0

    const-string/jumbo v4, "/indexUpdateAck"

    :goto_0
    iget v5, p0, Lc8/euf;->val$reqRetryNum:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/duf;-><init>(Lc8/euf;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 46
    .local v0, "reportReq":Lc8/Ltf;
    invoke-virtual {v0}, Lc8/Ltf;->syncRequest()Ljava/lang/Object;

    .line 48
    iget-boolean v1, p0, Lc8/euf;->val$isIndexReport:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "isReportIndex":Ljava/lang/String;
    invoke-virtual {v0}, Lc8/Ltf;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-boolean v1, p0, Lc8/euf;->val$isIndexReport:Z

    if-eqz v1, :cond_1

    .line 51
    const-string/jumbo v1, "OrangeConfig"

    const-string/jumbo v2, "index_ack_rate"

    invoke-static {v1, v2, v8}, Lc8/Rtf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_1
    const-string/jumbo v1, "ReportAckUtils"

    const-string/jumbo v2, "asyncReportUpdateAck success"

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v5, "isIndexReport"

    aput-object v5, v4, v9

    iget-boolean v5, p0, Lc8/euf;->val$isIndexReport:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :goto_2
    return-void

    .line 29
    .end local v0    # "reportReq":Lc8/Ltf;
    .end local v8    # "isReportIndex":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "/batchNamespaceUpdateAck"

    goto :goto_0

    .line 53
    .restart local v0    # "reportReq":Lc8/Ltf;
    .restart local v8    # "isReportIndex":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "OrangeConfig"

    const-string/jumbo v2, "config_ack_rate"

    invoke-static {v1, v2, v8}, Lc8/Rtf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v0}, Lc8/Ltf;->getErrorCode()I

    move-result v6

    .line 58
    .local v6, "errorCode":I
    invoke-virtual {v0}, Lc8/Ltf;->getErrorMsg()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "errorMsg":Ljava/lang/String;
    const/16 v1, -0xc8

    if-eq v6, v1, :cond_3

    .line 60
    iget-boolean v1, p0, Lc8/euf;->val$isIndexReport:Z

    if-eqz v1, :cond_4

    .line 61
    const-string/jumbo v1, "OrangeConfig"

    const-string/jumbo v2, "index_ack_rate"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v8, v4, v7}, Lc8/Rtf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    :goto_3
    const-string/jumbo v1, "ReportAckUtils"

    const-string/jumbo v2, "asyncReportUpdateAck error"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "errCode"

    aput-object v5, v4, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string/jumbo v3, "errorMsg"

    aput-object v3, v4, v10

    const/4 v3, 0x3

    aput-object v7, v4, v3

    invoke-static {v1, v2, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 63
    :cond_4
    const-string/jumbo v1, "OrangeConfig"

    const-string/jumbo v2, "config_ack_rate"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v8, v4, v7}, Lc8/Rtf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
