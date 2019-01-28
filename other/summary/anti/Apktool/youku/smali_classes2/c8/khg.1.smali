.class public Lc8/khg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/shg;->a(ZLc8/Dmg;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc8/Dmg;

.field final synthetic c:Lc8/shg;


# direct methods
.method constructor <init>(Lc8/shg;Ljava/lang/String;Lc8/Dmg;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lc8/khg;->c:Lc8/shg;

    iput-object p2, p0, Lc8/khg;->a:Ljava/lang/String;

    iput-object p3, p0, Lc8/khg;->b:Lc8/Dmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 282
    sget-object v0, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    sget-object v1, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lc8/omg;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 285
    iget-object v0, p0, Lc8/khg;->c:Lc8/shg;

    invoke-static {v0}, Lc8/shg;->e(Lc8/shg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 286
    if-eqz v0, :cond_0

    .line 287
    new-instance v1, Lc8/jhg;

    invoke-direct {v1, p0, v0}, Lc8/jhg;-><init>(Lc8/khg;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    :cond_0
    return-void
.end method
