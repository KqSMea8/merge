.class public Lcom/youku/phone/skin/data/CMSSkinData;
.super Ljava/lang/Object;
.source "CMSSkinData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;,
        Lcom/youku/phone/skin/data/CMSSkinData$Search;,
        Lcom/youku/phone/skin/data/CMSSkinData$Navigation;,
        Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
    }
.end annotation


# instance fields
.field public config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

.field public configType:Ljava/lang/String;

.field public device:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public page:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    invoke-direct {v0}, Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/skin/data/CMSSkinData;->config:Lcom/youku/phone/skin/data/CMSSkinData$SkinConfig;

    .line 48
    return-void
.end method
