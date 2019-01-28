.class public final Lc8/rf;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lc8/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnimator()Lc8/ef;
    .locals 3

    .prologue
    .line 28
    new-instance v1, Lc8/ef;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    new-instance v0, Lc8/jf;

    invoke-direct {v0}, Lc8/jf;-><init>()V

    :goto_0
    invoke-direct {v1, v0}, Lc8/ef;-><init>(Lc8/df;)V

    return-object v1

    :cond_0
    new-instance v0, Lc8/gf;

    invoke-direct {v0}, Lc8/gf;-><init>()V

    goto :goto_0
.end method
