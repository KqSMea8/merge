.class public Lc8/KVo;
.super Ljava/lang/Object;
.source "SCGCardInfo.java"


# instance fields
.field public actionClass:Ljava/lang/String;

.field public bizExtMap:Ljava/lang/String;

.field public httpStatusCode:I

.field public msgCode:Ljava/lang/String;

.field public msgInfo:Ljava/lang/String;

.field public scgId:I

.field public scgType:Ljava/lang/String;

.field public scgVideoInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/LVo;",
            ">;"
        }
    .end annotation
.end field

.field public success:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/KVo;->scgVideoInfos:Ljava/util/List;

    return-void
.end method
