.class public Lc8/NUb;
.super Ljava/lang/Object;
.source "MainLooperMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QUb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QUb;


# direct methods
.method constructor <init>(Lc8/QUb;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lc8/NUb;->this$0:Lc8/QUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 4
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v0, ">>>>> Dispatching to"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lc8/NUb;->this$0:Lc8/QUb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/QUb;->access$002(Lc8/QUb;J)J

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string/jumbo v0, "<<<<< Finished to"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lc8/NUb;->this$0:Lc8/QUb;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lc8/QUb;->access$002(Lc8/QUb;J)J

    goto :goto_0
.end method
