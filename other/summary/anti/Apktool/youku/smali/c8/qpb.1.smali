.class public Lc8/qpb;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tpb;->addTabView(Lc8/spb;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tpb;


# direct methods
.method constructor <init>(Lc8/tpb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tpb;

    .prologue
    .line 104
    iput-object p1, p0, Lc8/qpb;->this$0:Lc8/tpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/spb;

    .line 108
    .local v0, "tab":Lc8/spb;
    invoke-virtual {v0}, Lc8/spb;->select()V

    .line 109
    return-void
.end method
