.class public Lcom/youku/phone/skin/data/CMSSkinData$TabTag;
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
    name = "TabTag"
.end annotation


# instance fields
.field public background:Ljava/lang/String;

.field public background2:Ljava/lang/String;

.field public drawableBg:Landroid/graphics/drawable/Drawable;

.field public iconName:Ljava/lang/String;

.field public id:I

.field public selected:Ljava/lang/String;

.field public tabTextColors:Landroid/content/res/ColorStateList;

.field public textColor:Ljava/lang/String;

.field public unselected:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
