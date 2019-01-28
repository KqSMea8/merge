.class public Landroid/taobao/windvane/service/WVEventResult;
.super Ljava/lang/Object;
.source "WVEventResult.java"


# instance fields
.field public isSuccess:Z

.field public resultObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "isSuccess"    # Z
    .param p2, "resultObj"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    .line 23
    iput-object p2, p0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    .line 24
    return-void
.end method
