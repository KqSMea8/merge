.class public abstract Lc8/RVc;
.super Ljava/lang/Object;
.source "AbstractCard.java"


# instance fields
.field public cardType:I

.field protected tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lc8/RVc;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lc8/RVc;->tag:Ljava/lang/String;

    .line 20
    return-void
.end method
