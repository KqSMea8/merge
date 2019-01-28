.class public Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;
.super Ljava/lang/Object;
.source "CMSSkinData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/skin/data/CMSSkinData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkinConfig"
.end annotation


# instance fields
.field public bottom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/skin/data/CMSSkinData$TabTag;",
            ">;"
        }
    .end annotation
.end field

.field public bottomBackground:Ljava/lang/String;

.field public navigation:Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

.field public search:Lcom/youku/phone/skin/data/CMSSkinData$Search;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->bottom:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

    invoke-direct {v0}, Lcom/youku/phone/skin/data/CMSSkinData$Navigation;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->navigation:Lcom/youku/phone/skin/data/CMSSkinData$Navigation;

    .line 52
    new-instance v0, Lcom/youku/phone/skin/data/CMSSkinData$Search;

    invoke-direct {v0}, Lcom/youku/phone/skin/data/CMSSkinData$Search;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;->search:Lcom/youku/phone/skin/data/CMSSkinData$Search;

    return-void
.end method
