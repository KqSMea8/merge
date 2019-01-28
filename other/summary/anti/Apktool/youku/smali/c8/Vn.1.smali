.class public Lc8/Vn;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Lc8/pn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xn;


# direct methods
.method constructor <init>(Lc8/Xn;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lc8/Vn;->this$0:Lc8/Xn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lc8/Vn;->this$0:Lc8/Xn;

    invoke-virtual {v0}, Lc8/Xn;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 207
    .line 208
    invoke-virtual {p0}, Lc8/Vn;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [I

    sget v5, Lcom/youku/phone/R$attr;->homeAsUpIndicator:I

    aput v5, v4, v6

    .line 207
    invoke-static {v2, v3, v4}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lc8/cx;

    move-result-object v0

    .line 209
    .local v0, "a":Lc8/cx;
    invoke-virtual {v0, v6}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 210
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 211
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lc8/Vn;->this$0:Lc8/Xn;

    invoke-virtual {v1}, Lc8/Xn;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 222
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/mn;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lc8/Vn;->this$0:Lc8/Xn;

    invoke-virtual {v1}, Lc8/Xn;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 237
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Lc8/mn;->setHomeActionContentDescription(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lc8/Vn;->this$0:Lc8/Xn;

    invoke-virtual {v1}, Lc8/Xn;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 228
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lc8/mn;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual {v0, p2}, Lc8/mn;->setHomeActionContentDescription(I)V

    .line 232
    :cond_0
    return-void
.end method
