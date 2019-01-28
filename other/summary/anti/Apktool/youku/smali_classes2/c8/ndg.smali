.class public Lc8/ndg;
.super Ljava/lang/Object;
.source "WXListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/odg;->createChildViewAt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/odg;

.field final synthetic val$child:Lc8/tbg;


# direct methods
.method constructor <init>(Lc8/odg;Lc8/tbg;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lc8/ndg;->this$0:Lc8/odg;

    iput-object p2, p0, Lc8/ndg;->val$child:Lc8/tbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lc8/ndg;->this$0:Lc8/odg;

    invoke-virtual {v0}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    iget-object v1, p0, Lc8/ndg;->val$child:Lc8/tbg;

    invoke-virtual {v0, v1}, Lc8/Ifg;->setFooterView(Lc8/tbg;)V

    .line 216
    return-void
.end method
