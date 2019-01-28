.class public Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$MyURLSpan;
.super Landroid/text/style/URLSpan;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyURLSpan"
.end annotation


# instance fields
.field public mId:Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 804
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 805
    iput-object p2, p0, Lcom/youku/weex/component/richtext/HtmlToSpannedConverter$MyURLSpan;->mId:Ljava/lang/String;

    .line 806
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 810
    return-void
.end method
