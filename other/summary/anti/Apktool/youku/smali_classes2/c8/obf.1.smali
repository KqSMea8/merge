.class public Lc8/obf;
.super Lc8/Tcf;
.source "PanguInitializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pbf;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/pbf;

.field final synthetic val$m:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lc8/pbf;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lc8/obf;->this$1:Lc8/pbf;

    iput-object p3, p0, Lc8/obf;->val$m:Ljava/lang/reflect/Method;

    invoke-direct {p0, p2}, Lc8/Tcf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lc8/obf;->this$1:Lc8/pbf;

    iget-object v0, v0, Lc8/pbf;->this$0:Lc8/Bbf;

    iget-object v1, p0, Lc8/obf;->val$m:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Lc8/Bbf;->invokeInitializer(Ljava/lang/reflect/Method;)V

    .line 190
    return-void
.end method
