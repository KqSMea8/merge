.class public Lcom/alibaba/mtl/godeye/client/onlinemonitor/OnlineMonitorInitializer;
.super Ljava/lang/Object;
.source "OnlineMonitorInitializer.java"

# interfaces
.implements Lc8/CWb;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Lc8/nWb;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "godeye"    # Lc8/nWb;

    .prologue
    .line 17
    new-instance v0, Lc8/AWb;

    invoke-direct {v0}, Lc8/AWb;-><init>()V

    invoke-interface {p2, v0}, Lc8/nWb;->registerCommandController(Lc8/cWb;)V

    .line 18
    return-void
.end method
