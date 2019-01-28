.class public Lc8/fSb;
.super Lc8/hSb;
.source "MotuAdapteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaExceptionReportBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iSb;


# direct methods
.method constructor <init>(Lc8/iSb;Lc8/dSb;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p2, "exceptionModule"    # Lc8/dSb;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "reportName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "type"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lc8/fSb;->this$0:Lc8/iSb;

    .line 475
    invoke-direct/range {p0 .. p7}, Lc8/hSb;-><init>(Lc8/iSb;Lc8/dSb;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 476
    return-void
.end method


# virtual methods
.method protected buildContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lc8/fSb;->buildThrowable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {p0}, Lc8/fSb;->buildExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p0}, Lc8/fSb;->buildStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p0}, Lc8/fSb;->buildStorageinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {p0}, Lc8/fSb;->buildFileDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Lc8/fSb;->mThrowable:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lc8/fSb;->buildApplictionMeminfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_0
    invoke-virtual {p0}, Lc8/fSb;->buildLogcat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
