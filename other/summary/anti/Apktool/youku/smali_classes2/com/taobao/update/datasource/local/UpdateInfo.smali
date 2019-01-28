.class public Lcom/taobao/update/datasource/local/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;
    }
.end annotation


# instance fields
.field public appVersion:Ljava/lang/String;

.field public lastUpdateTime:J

.field public updateList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    .line 20
    return-void
.end method
