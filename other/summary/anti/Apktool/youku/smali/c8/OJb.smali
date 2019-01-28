.class public final Lc8/OJb;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PJb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final hashCode:I

.field public final key:Ljava/lang/reflect/Type;

.field public final next:Lc8/OJb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/OJb",
            "<TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Object;ILc8/OJb;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/reflect/Type;
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TV;I",
            "Lc8/OJb",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lc8/OJb;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Lc8/OJb;, "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lc8/OJb;->key:Ljava/lang/reflect/Type;

    .line 74
    iput-object p2, p0, Lc8/OJb;->value:Ljava/lang/Object;

    .line 75
    iput-object p4, p0, Lc8/OJb;->next:Lc8/OJb;

    .line 76
    iput p3, p0, Lc8/OJb;->hashCode:I

    .line 77
    return-void
.end method
