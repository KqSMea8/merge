.class public Lc8/jkd;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc8/Mkd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/skd;->get(Lc8/omd;)Lc8/Mkd;
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

.field final synthetic val$type:Ljava/lang/reflect/Type;

.field final synthetic val$typeCreator:Lc8/Ijd;


# direct methods
.method constructor <init>(Lc8/skd;Lc8/Ijd;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "this$0"    # Lc8/skd;

    .prologue
    .line 64
    iput-object p1, p0, Lc8/jkd;->this$0:Lc8/skd;

    iput-object p2, p0, Lc8/jkd;->val$typeCreator:Lc8/Ijd;

    iput-object p3, p0, Lc8/jkd;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lc8/jkd;->val$typeCreator:Lc8/Ijd;

    iget-object v1, p0, Lc8/jkd;->val$type:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lc8/Ijd;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
