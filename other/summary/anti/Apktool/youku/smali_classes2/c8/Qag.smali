.class public Lc8/Qag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lc8/rbg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/abg;->onHostViewInitialized(Lc8/peg;)V
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
    .line 92
    iput-object p1, p0, Lc8/Qag;->this$0:Lc8/abg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lc8/Qag;->this$0:Lc8/abg;

    invoke-static {v0}, Lc8/abg;->access$000(Lc8/abg;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lc8/Qag;->this$0:Lc8/abg;

    const-string/jumbo v1, ":focus"

    invoke-virtual {v0, v1, p1}, Lc8/abg;->setPseudoClassStatus(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method
