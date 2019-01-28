.class public Lc8/jSb;
.super Ljava/lang/Object;
.source "MotuReportAdapteHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterSendThread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mResult:Lc8/rSb;

.field final synthetic this$0:Lc8/kSb;


# direct methods
.method constructor <init>(Lc8/kSb;Lc8/rSb;Landroid/content/Context;)V
    .locals 0
    .param p2, "adapterSendModule"    # Lc8/rSb;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    iput-object p1, p0, Lc8/jSb;->this$0:Lc8/kSb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lc8/jSb;->mResult:Lc8/rSb;

    .line 41
    iput-object p3, p0, Lc8/jSb;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lc8/jSb;->mResult:Lc8/rSb;

    iget-object v10, v1, Lc8/rSb;->eventId:Ljava/lang/Integer;

    .line 47
    .local v10, "eventId":Ljava/lang/Integer;
    iget-object v1, p0, Lc8/jSb;->mResult:Lc8/rSb;

    iget-object v6, v1, Lc8/rSb;->sendFlag:Ljava/lang/String;

    .line 48
    .local v6, "arg1":Ljava/lang/String;
    iget-object v1, p0, Lc8/jSb;->mResult:Lc8/rSb;

    iget-object v7, v1, Lc8/rSb;->sendContent:Ljava/lang/String;

    .line 49
    .local v7, "arg2":Ljava/lang/String;
    iget-object v1, p0, Lc8/jSb;->mResult:Lc8/rSb;

    iget-object v4, v1, Lc8/rSb;->businessType:Ljava/lang/String;

    .line 50
    .local v4, "page":Ljava/lang/String;
    iget-object v1, p0, Lc8/jSb;->mResult:Lc8/rSb;

    iget-object v8, v1, Lc8/rSb;->aggregationType:Ljava/lang/String;

    .line 52
    .local v8, "arg3":Ljava/lang/String;
    iget-object v1, p0, Lc8/jSb;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lc8/eUb;->sendLog(Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v4    # "page":Ljava/lang/String;
    .end local v6    # "arg1":Ljava/lang/String;
    .end local v7    # "arg2":Ljava/lang/String;
    .end local v8    # "arg3":Ljava/lang/String;
    .end local v10    # "eventId":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MotuCrashAdapter"

    const-string/jumbo v2, "adapter send err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
