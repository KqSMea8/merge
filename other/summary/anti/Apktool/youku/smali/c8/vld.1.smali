.class public final Lc8/vld;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lc8/Kjd;
.implements Lc8/Rjd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GsonContextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xld;


# direct methods
.method private constructor <init>(Lc8/xld;)V
    .locals 0

    .prologue
    .line 153
    .local p0, "this":Lc8/vld;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iput-object p1, p0, Lc8/vld;->this$0:Lc8/xld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/xld;Lc8/uld;)V
    .locals 0
    .param p1, "x0"    # Lc8/xld;
    .param p2, "x1"    # Lc8/uld;

    .prologue
    .line 153
    .local p0, "this":Lc8/vld;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    invoke-direct {p0, p1}, Lc8/vld;-><init>(Lc8/xld;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lc8/Mjd;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Lc8/Mjd;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mjd;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lc8/vld;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iget-object v0, p0, Lc8/vld;->this$0:Lc8/xld;

    iget-object v0, v0, Lc8/xld;->gson:Lc8/Gjd;

    invoke-virtual {v0, p1, p2}, Lc8/Gjd;->fromJson(Lc8/Mjd;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;)Lc8/Mjd;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 155
    .local p0, "this":Lc8/vld;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iget-object v0, p0, Lc8/vld;->this$0:Lc8/xld;

    iget-object v0, v0, Lc8/xld;->gson:Lc8/Gjd;

    invoke-virtual {v0, p1}, Lc8/Gjd;->toJsonTree(Ljava/lang/Object;)Lc8/Mjd;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lc8/Mjd;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 158
    .local p0, "this":Lc8/vld;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iget-object v0, p0, Lc8/vld;->this$0:Lc8/xld;

    iget-object v0, v0, Lc8/xld;->gson:Lc8/Gjd;

    invoke-virtual {v0, p1, p2}, Lc8/Gjd;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lc8/Mjd;

    move-result-object v0

    return-object v0
.end method
