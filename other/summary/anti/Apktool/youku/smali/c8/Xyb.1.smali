.class public final Lc8/Xyb;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gzb;->createSetRequestAuthTask(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$isEncode:Z

.field final synthetic val$isSecurity:Z

.field final synthetic val$secret:Ljava/lang/String;


# direct methods
.method constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 368
    iput-boolean p1, p0, Lc8/Xyb;->val$isSecurity:Z

    iput-boolean p2, p0, Lc8/Xyb;->val$isEncode:Z

    iput-object p3, p0, Lc8/Xyb;->val$appkey:Ljava/lang/String;

    iput-object p4, p0, Lc8/Xyb;->val$secret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 372
    :try_start_0
    sget-object v0, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-boolean v1, p0, Lc8/Xyb;->val$isSecurity:Z

    iget-boolean v2, p0, Lc8/Xyb;->val$isEncode:Z

    iget-object v3, p0, Lc8/Xyb;->val$appkey:Ljava/lang/String;

    iget-object v4, p0, Lc8/Xyb;->val$secret:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lc8/kzb;->setRequestAuthInfo(ZZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
