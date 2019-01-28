.class public Lc8/whg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 614
    iput-object p1, p0, Lc8/whg;->a:Lc8/Chg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 619
    :try_start_0
    invoke-static {}, Lc8/xmg;->clearAllPWD()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
