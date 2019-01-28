.class public Lc8/lG;
.super Ljava/lang/Object;
.source "WVPackageAppManager.java"

# interfaces
.implements Lc8/EG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sG;->init(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sG;


# direct methods
.method constructor <init>(Lc8/sG;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lc8/lG;->this$0:Lc8/sG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUninstall(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "retainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/lG;->this$0:Lc8/sG;

    invoke-static {v0, p1}, Lc8/sG;->access$000(Lc8/sG;Ljava/util/List;)V

    .line 87
    return-void
.end method
