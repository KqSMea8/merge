.class public Lc8/By;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HackedConstructor"
.end annotation


# instance fields
.field protected mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "arg_types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    if-nez p1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 431
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lc8/By;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    invoke-direct {v1, v0}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/Exception;)V

    .line 434
    .local v1, "hae":Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    invoke-virtual {v1, p1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->setHackedClass(Ljava/lang/Class;)V

    .line 435
    invoke-static {v1}, Lc8/Ey;->access$000(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs getInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "arg_types"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lc8/By;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 443
    :try_start_0
    iget-object v2, p0, Lc8/By;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 447
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 444
    .restart local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
