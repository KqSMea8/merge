.class public Lc8/Obp;
.super Ljava/lang/Object;
.source "YoukuPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Sbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItem"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private itemId:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lc8/Obp;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lc8/Obp;->itemId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lc8/Obp;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setItemId(I)V
    .locals 0
    .param p1, "itemId"    # I

    .prologue
    .line 264
    iput p1, p0, Lc8/Obp;->itemId:I

    .line 265
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lc8/Obp;->title:Ljava/lang/String;

    .line 273
    return-void
.end method
