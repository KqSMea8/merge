.class public Lcom/taobao/orange/model/IndexAckDO;
.super Ljava/lang/Object;
.source "IndexAckDO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public indexId:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "indexId"    # Ljava/lang/String;
    .param p2, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/taobao/orange/model/IndexAckDO;->indexId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/taobao/orange/model/IndexAckDO;->updateTime:Ljava/lang/String;

    .line 16
    return-void
.end method
