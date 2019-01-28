.class public abstract Lc8/rFb;
.super Ljava/lang/Object;


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Lc8/NGb;

.field protected d:Z

.field public paramObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/rFb;->d:Z

    return-void
.end method


# virtual methods
.method public abstract execute(Ljava/lang/String;Ljava/lang/String;Lc8/eFb;)Z
.end method

.method public initialize(Landroid/content/Context;Lc8/NGb;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/rFb;->initialize(Landroid/content/Context;Lc8/NGb;Ljava/lang/Object;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Lc8/NGb;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lc8/rFb;->b:Landroid/content/Context;

    iput-object p2, p0, Lc8/rFb;->c:Lc8/NGb;

    iput-object p3, p0, Lc8/rFb;->paramObj:Ljava/lang/Object;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/rFb;->d:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/rFb;->d:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/rFb;->d:Z

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    return-void
.end method
