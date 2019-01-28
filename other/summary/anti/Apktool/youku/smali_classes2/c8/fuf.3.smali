.class public Lc8/fuf;
.super Ljava/lang/Object;
.source "ReportAckUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportAckUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncReportUpdateAck(ZLjava/lang/Object;IJ)V
    .locals 1
    .param p0, "isIndexReport"    # Z
    .param p1, "reqBodyObj"    # Ljava/lang/Object;
    .param p2, "reqRetryNum"    # I
    .param p3, "delay"    # J

    .prologue
    .line 26
    new-instance v0, Lc8/euf;

    invoke-direct {v0, p0, p2, p1}, Lc8/euf;-><init>(ZILjava/lang/Object;)V

    invoke-static {v0, p3, p4}, Lc8/btf;->execute(Ljava/lang/Runnable;J)V

    .line 70
    return-void
.end method
