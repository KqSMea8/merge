.class public Lc8/Qcg;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Lc8/bdg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xcg;->onHostViewInitialized(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xcg;


# direct methods
.method constructor <init>(Lc8/Xcg;)V
    .locals 0

    .prologue
    .line 188
    .local p0, "this":Lc8/Qcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.1;"
    iput-object p1, p0, Lc8/Qcg;->this$0:Lc8/Xcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public triggerEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lc8/Qcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.1;"
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/Qcg;->this$0:Lc8/Xcg;

    invoke-virtual {v0, p1, p2}, Lc8/Xcg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 192
    return-void
.end method
