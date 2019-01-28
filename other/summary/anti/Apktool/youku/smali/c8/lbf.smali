.class public Lc8/lbf;
.super Lc8/Tcf;
.source "PanguInitializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bbf;->start(Lc8/kbf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bbf;


# direct methods
.method constructor <init>(Lc8/Bbf;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lc8/lbf;->this$0:Lc8/Bbf;

    invoke-direct {p0, p2}, Lc8/Tcf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lc8/lbf;->this$0:Lc8/Bbf;

    invoke-virtual {v0}, Lc8/Bbf;->parse()V

    return-void
.end method
