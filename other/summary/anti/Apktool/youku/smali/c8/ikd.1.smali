.class public Lc8/ikd;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc8/Mkd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/skd;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc8/Mkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Mkd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/skd;

.field private final unsafeAllocator:Lc8/Vkd;

.field final synthetic val$rawType:Ljava/lang/Class;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lc8/skd;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "this$0"    # Lc8/skd;

    .prologue
    .line 218
    iput-object p1, p0, Lc8/ikd;->this$0:Lc8/skd;

    iput-object p2, p0, Lc8/ikd;->val$rawType:Ljava/lang/Class;

    iput-object p3, p0, Lc8/ikd;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {}, Lc8/Vkd;->create()Lc8/Vkd;

    move-result-object v0

    iput-object v0, p0, Lc8/ikd;->unsafeAllocator:Lc8/Vkd;

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 223
    :try_start_0
    iget-object v2, p0, Lc8/ikd;->unsafeAllocator:Lc8/Vkd;

    iget-object v3, p0, Lc8/ikd;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lc8/Vkd;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    .local v1, "newInstance":Ljava/lang/Object;
    return-object v1

    .line 225
    .end local v1    # "newInstance":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to invoke no-args constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/ikd;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
