.class public final Lc8/ke;
.super Lc8/Nc;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/je;,
        Lc8/ie;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Nc",
        "<",
        "Lc8/ke;",
        ">;"
    }
.end annotation


# static fields
.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1


# instance fields
.field private mCallback:Lc8/Gc;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Gc",
            "<",
            "Lc8/ke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lc8/Ic;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "contentViewCallback"    # Lc8/Ic;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lc8/Nc;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lc8/Ic;)V

    .line 113
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "fallback":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, p0, Lc8/yd;

    if-eqz v2, :cond_1

    .line 178
    check-cast p0, Landroid/view/ViewGroup;

    .line 198
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object p0

    .line 179
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    .line 183
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 186
    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    :cond_3
    if-eqz p0, :cond_4

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 193
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/view/View;

    .end local v1    # "parent":Landroid/view/ViewParent;
    move-object p0, v1

    .line 195
    :cond_4
    :goto_1
    if-nez p0, :cond_0

    move-object p0, v0

    .line 198
    goto :goto_0

    .line 193
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static make(Landroid/view/View;II)Lc8/ke;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lc8/ke;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lc8/ke;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Lc8/ke;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Lc8/ke;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 136
    .local v2, "parent":Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 137
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 142
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/youku/phone/R$layout;->design_layout_snackbar_include:I

    const/4 v5, 0x0

    .line 143
    invoke-virtual {v1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/fc;

    .line 145
    .local v0, "content":Lc8/fc;
    new-instance v3, Lc8/ke;

    invoke-direct {v3, v2, v0, v0}, Lc8/ke;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lc8/Ic;)V

    .line 146
    .local v3, "snackbar":Lc8/ke;
    invoke-virtual {v3, p1}, Lc8/ke;->setText(Ljava/lang/CharSequence;)Lc8/ke;

    .line 147
    invoke-virtual {v3, p2}, Lc8/ke;->setDuration(I)Lc8/Nc;

    .line 148
    return-object v3
.end method


# virtual methods
.method public setAction(ILandroid/view/View$OnClickListener;)Lc8/ke;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lc8/ke;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lc8/ke;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lc8/ke;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lc8/ke;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v2, p0, Lc8/ke;->mView:Lc8/Mc;

    invoke-virtual {v2, v3}, Lc8/Mc;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/fc;

    .line 244
    .local v0, "contentLayout":Lc8/fc;
    invoke-virtual {v0}, Lc8/fc;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 246
    .local v1, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 247
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :goto_0
    return-object p0

    .line 250
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v2, Lc8/he;

    invoke-direct {v2, p0, p2}, Lc8/he;-><init>(Lc8/ke;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Lc8/ke;
    .locals 4
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 282
    iget-object v2, p0, Lc8/ke;->mView:Lc8/Mc;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/Mc;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/fc;

    .line 283
    .local v0, "contentLayout":Lc8/fc;
    invoke-virtual {v0}, Lc8/fc;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 284
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Lc8/ke;
    .locals 4
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 270
    iget-object v2, p0, Lc8/ke;->mView:Lc8/Mc;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/Mc;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/fc;

    .line 271
    .local v0, "contentLayout":Lc8/fc;
    invoke-virtual {v0}, Lc8/fc;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 272
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 273
    return-object p0
.end method

.method public setCallback(Lc8/ie;)Lc8/ke;
    .locals 1
    .param p1, "callback"    # Lc8/ie;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lc8/ke;->mCallback:Lc8/Gc;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lc8/ke;->mCallback:Lc8/Gc;

    invoke-virtual {p0, v0}, Lc8/ke;->removeCallback(Lc8/Gc;)Lc8/Nc;

    .line 308
    :cond_0
    if-eqz p1, :cond_1

    .line 309
    invoke-virtual {p0, p1}, Lc8/ke;->addCallback(Lc8/Gc;)Lc8/Nc;

    .line 313
    :cond_1
    iput-object p1, p0, Lc8/ke;->mCallback:Lc8/Gc;

    .line 314
    return-object p0
.end method

.method public setText(I)Lc8/ke;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lc8/ke;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/ke;->setText(Ljava/lang/CharSequence;)Lc8/ke;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lc8/ke;
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 208
    iget-object v2, p0, Lc8/ke;->mView:Lc8/Mc;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/Mc;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/fc;

    .line 209
    .local v0, "contentLayout":Lc8/fc;
    invoke-virtual {v0}, Lc8/fc;->getMessageView()Landroid/widget/TextView;

    move-result-object v1

    .line 210
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-object p0
.end method
