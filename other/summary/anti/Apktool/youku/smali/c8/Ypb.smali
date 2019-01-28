.class public Lc8/Ypb;
.super Lc8/UYf;
.source "WXRichTextDomObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lc8/UYf;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lc8/Ypb;->getDomContext()Lc8/pYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/pYf;->getUIContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lc8/Ypb;->getDomContext()Lc8/pYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/pYf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lc8/Ypb;->getDomContext()Lc8/pYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/pYf;->getUIContext()Landroid/content/Context;

    move-result-object v1

    .line 226
    invoke-virtual {p0}, Lc8/Ypb;->getDomContext()Lc8/pYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/pYf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {p0}, Lc8/Ypb;->getRef()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-static {v1, v2, v3, p1}, Lc8/gqb;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    .line 229
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-static {v1}, Lc8/gqb;->createSpanFlag(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc8/Ypb;->updateSpannable(Landroid/text/Spannable;I)V

    .line 232
    .end local v0    # "spannable":Landroid/text/Spannable;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
