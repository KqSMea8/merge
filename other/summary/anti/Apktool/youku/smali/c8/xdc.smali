.class public Lc8/xdc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ydc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;

.field final synthetic this$1:Lc8/ydc;


# direct methods
.method public constructor <init>(Lc8/ydc;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 693
    iput-object p1, p0, Lc8/xdc;->this$1:Lc8/ydc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p2, p0, Lc8/xdc;->mSource:Ljava/lang/CharSequence;

    .line 695
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 698
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    .line 699
    const/16 v0, 0x2a

    .line 701
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/xdc;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lc8/xdc;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 709
    iget-object v0, p0, Lc8/xdc;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
