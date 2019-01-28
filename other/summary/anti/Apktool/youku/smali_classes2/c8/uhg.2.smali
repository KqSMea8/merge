.class public Lc8/uhg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Chg;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/Chg;


# direct methods
.method constructor <init>(Lc8/Chg;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lc8/uhg;->a:Lc8/Chg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x1

    return v0
.end method
