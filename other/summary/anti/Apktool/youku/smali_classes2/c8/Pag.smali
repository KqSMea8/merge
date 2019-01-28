.class public Lc8/Pag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lc8/Jcg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/abg;->addKeyboardListener(Lc8/peg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/abg;


# direct methods
.method constructor <init>(Lc8/abg;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lc8/Pag;->this$0:Lc8/abg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardEvent(Z)V
    .locals 3
    .param p1, "isShown"    # Z

    .prologue
    .line 728
    iget-object v1, p0, Lc8/Pag;->this$0:Lc8/abg;

    invoke-static {v1}, Lc8/abg;->access$1300(Lc8/abg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 730
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "isShow"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object v1, p0, Lc8/Pag;->this$0:Lc8/abg;

    const-string/jumbo v2, "keyboard"

    invoke-virtual {v1, v2, v0}, Lc8/abg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 733
    .end local v0    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-nez p1, :cond_1

    .line 734
    iget-object v1, p0, Lc8/Pag;->this$0:Lc8/abg;

    invoke-virtual {v1}, Lc8/abg;->blur()V

    .line 736
    :cond_1
    return-void
.end method
