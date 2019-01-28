.class public Lc8/Nkk;
.super Ljava/lang/Object;
.source "StillsCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Okk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StillInfo"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private scm:Ljava/lang/String;

.field private setId:Ljava/lang/String;

.field private spm:Ljava/lang/String;

.field private tabId:Ljava/lang/String;

.field private trackInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lc8/Nkk;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lc8/Nkk;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public getSetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/Nkk;->setId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lc8/Nkk;->spm:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lc8/Nkk;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lc8/Nkk;->trackInfo:Ljava/lang/String;

    return-object v0
.end method
