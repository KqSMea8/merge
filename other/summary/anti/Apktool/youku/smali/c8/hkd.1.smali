.class public Lc8/hkd;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc8/Mkd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/skd;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc8/Mkd;
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


# direct methods
.method constructor <init>(Lc8/skd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/skd;

    .prologue
    .line 205
    iput-object p1, p0, Lc8/hkd;->this$0:Lc8/skd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    return-object v0
.end method
