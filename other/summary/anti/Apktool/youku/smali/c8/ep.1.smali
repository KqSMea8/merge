.class public Lc8/ep;
.super Lc8/kn;
.source "WindowDecorActionBar.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Lc8/ln;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lc8/fp;


# direct methods
.method public constructor <init>(Lc8/fp;)V
    .locals 1
    .param p1, "this$0"    # Lc8/fp;

    .prologue
    .line 1139
    iput-object p1, p0, Lc8/ep;->this$0:Lc8/fp;

    invoke-direct {p0}, Lc8/kn;-><init>()V

    .line 1145
    const/4 v0, -0x1

    iput v0, p0, Lc8/ep;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Lc8/ln;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lc8/ep;->mCallback:Lc8/ln;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lc8/ep;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lc8/ep;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lc8/ep;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1196
    iget v0, p0, Lc8/ep;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lc8/ep;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lc8/ep;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lc8/ep;->this$0:Lc8/fp;

    invoke-virtual {v0, p0}, Lc8/fp;->selectTab(Lc8/kn;)V

    .line 1239
    return-void
.end method

.method public setContentDescription(I)Lc8/kn;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1243
    iget-object v0, p0, Lc8/ep;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/ep;->setContentDescription(Ljava/lang/CharSequence;)Lc8/kn;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lc8/kn;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 1248
    iput-object p1, p0, Lc8/ep;->mContentDesc:Ljava/lang/CharSequence;

    .line 1249
    iget v0, p0, Lc8/ep;->mPosition:I

    if-ltz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lc8/ep;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mTabScrollView:Lc8/fw;

    iget v1, p0, Lc8/ep;->mPosition:I

    invoke-virtual {v0, v1}, Lc8/fw;->updateTab(I)V

    .line 1252
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Lc8/kn;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 1185
    iget-object v0, p0, Lc8/ep;->this$0:Lc8/fp;

    invoke-virtual {v0}, Lc8/fp;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 1186
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1185
    invoke-virtual {p0, v0}, Lc8/ep;->setCustomView(Landroid/view/View;)Lc8/kn;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lc8/kn;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1176
    iput-object p1, p0, Lc8/ep;->mCustomView:Landroid/view/View;

    .line 1177
    iget v0, p0, Lc8/ep;->mPosition:I

    if-ltz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lc8/ep;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mTabScrollView:Lc8/fw;

    iget v1, p0, Lc8/ep;->mPosition:I

    invoke-virtual {v0, v1}, Lc8/fw;->updateTab(I)V

    .line 1180
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lc8/kn;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1219
    iget-object v0, p0, Lc8/ep;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/ep;->setIcon(Landroid/graphics/drawable/Drawable;)Lc8/kn;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lc8/kn;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1210
    iput-object p1, p0, Lc8/ep;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1211
    iget v0, p0, Lc8/ep;->mPosition:I

    if-ltz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lc8/ep;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mTabScrollView:Lc8/fw;

    iget v1, p0, Lc8/ep;->mPosition:I

    invoke-virtual {v0, v1}, Lc8/fw;->updateTab(I)V

    .line 1214
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1200
    iput p1, p0, Lc8/ep;->mPosition:I

    .line 1201
    return-void
.end method

.method public setTabListener(Lc8/ln;)Lc8/kn;
    .locals 0
    .param p1, "callback"    # Lc8/ln;

    .prologue
    .line 1165
    iput-object p1, p0, Lc8/ep;->mCallback:Lc8/ln;

    .line 1166
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lc8/kn;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1155
    iput-object p1, p0, Lc8/ep;->mTag:Ljava/lang/Object;

    .line 1156
    return-object p0
.end method

.method public setText(I)Lc8/kn;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1233
    iget-object v0, p0, Lc8/ep;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/ep;->setText(Ljava/lang/CharSequence;)Lc8/kn;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lc8/kn;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1224
    iput-object p1, p0, Lc8/ep;->mText:Ljava/lang/CharSequence;

    .line 1225
    iget v0, p0, Lc8/ep;->mPosition:I

    if-ltz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lc8/ep;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mTabScrollView:Lc8/fw;

    iget v1, p0, Lc8/ep;->mPosition:I

    invoke-virtual {v0, v1}, Lc8/fw;->updateTab(I)V

    .line 1228
    :cond_0
    return-object p0
.end method
