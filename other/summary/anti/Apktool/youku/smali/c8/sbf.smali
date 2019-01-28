.class public Lc8/sbf;
.super Lc8/Tcf;
.source "PanguInitializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bbf;->startInitializersAnnotatedBy(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bbf;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lc8/Bbf;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lc8/sbf;->this$0:Lc8/Bbf;

    iput-object p3, p0, Lc8/sbf;->val$method:Ljava/lang/reflect/Method;

    invoke-direct {p0, p2}, Lc8/Tcf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lc8/sbf;->this$0:Lc8/Bbf;

    iget-object v1, p0, Lc8/sbf;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Lc8/Bbf;->invokeInitializer(Ljava/lang/reflect/Method;)V

    .line 226
    return-void
.end method
