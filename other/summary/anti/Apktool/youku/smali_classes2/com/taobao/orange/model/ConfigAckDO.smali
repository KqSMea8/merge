.class public Lcom/taobao/orange/model/ConfigAckDO;
.super Ljava/lang/Object;
.source "ConfigAckDO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public name:Ljava/lang/String;

.field public namespaceId:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespaceId"    # Ljava/lang/String;
    .param p3, "updateTime"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/taobao/orange/model/ConfigAckDO;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/taobao/orange/model/ConfigAckDO;->namespaceId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/taobao/orange/model/ConfigAckDO;->updateTime:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/taobao/orange/model/ConfigAckDO;->version:Ljava/lang/String;

    .line 20
    return-void
.end method
