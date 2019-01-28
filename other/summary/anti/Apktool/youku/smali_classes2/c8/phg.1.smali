.class public abstract Lc8/phg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field d:Landroid/app/Dialog;

.field final synthetic e:Lc8/qhg;


# direct methods
.method constructor <init>(Lc8/qhg;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lc8/phg;->e:Lc8/qhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p2, p0, Lc8/phg;->d:Landroid/app/Dialog;

    .line 500
    return-void
.end method
