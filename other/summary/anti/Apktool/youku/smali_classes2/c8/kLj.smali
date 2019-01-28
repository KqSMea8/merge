.class public Lc8/kLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lc8/jsf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->initAccsWithTlog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 813
    iput-object p1, p0, Lc8/kLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineMonitorNotify(ILcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V
    .locals 1
    .param p1, "flag"    # I
    .param p2, "onLineStat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    .prologue
    .line 816
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    .line 817
    invoke-static {}, Lc8/OL;->onBackground()V

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    const/16 v0, 0x33

    if-ne p1, v0, :cond_0

    .line 819
    invoke-static {}, Lc8/OL;->onForeground()V

    goto :goto_0
.end method
