.class public Lc8/LJb;
.super Ljava/lang/Object;
.source "StringCodec.java"

# interfaces
.implements Lc8/DJb;
.implements Lc8/hJb;


# static fields
.field public static instance:Lc8/LJb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lc8/LJb;

    invoke-direct {v0}, Lc8/LJb;-><init>()V

    sput-object v0, Lc8/LJb;->instance:Lc8/LJb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/NIb;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lc8/NIb;->parseString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
    .param p1, "serializer"    # Lc8/wJb;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 38
    .local v1, "value":Ljava/lang/String;
    iget-object v0, p1, Lc8/wJb;->out:Lc8/JJb;

    .line 40
    .local v0, "out":Lc8/JJb;
    if-nez v1, :cond_0

    .line 41
    invoke-virtual {v0}, Lc8/JJb;->writeNull()V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {v0, v1}, Lc8/JJb;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
