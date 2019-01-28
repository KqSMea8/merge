.class public Lc8/iwf;
.super Ljava/lang/Object;
.source "PhenixProduceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jwf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitorNode"
.end annotation


# instance fields
.field public from:Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/phenix/request/ImageStatistics$FromType;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "from"    # Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/iwf;->key:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lc8/iwf;->from:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 33
    return-void
.end method
