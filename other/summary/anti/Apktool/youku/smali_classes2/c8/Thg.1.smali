.class public Lc8/Thg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lc8/jmg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Uhg;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lc8/Dmg;

.field final synthetic d:Lc8/Uhg;


# direct methods
.method constructor <init>(Lc8/Uhg;Landroid/os/Bundle;Landroid/app/Activity;Lc8/Dmg;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lc8/Thg;->d:Lc8/Uhg;

    iput-object p2, p0, Lc8/Thg;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lc8/Thg;->b:Landroid/app/Activity;

    iput-object p4, p0, Lc8/Thg;->c:Lc8/Dmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public a(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    iget-object v0, p0, Lc8/Thg;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "imageUrl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lc8/Thg;->d:Lc8/Uhg;

    iget-object v1, p0, Lc8/Thg;->b:Landroid/app/Activity;

    iget-object v2, p0, Lc8/Thg;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lc8/Thg;->c:Lc8/Dmg;

    invoke-static {v0, v1, v2, v3}, Lc8/Uhg;->a(Lc8/Uhg;Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 297
    return-void
.end method
