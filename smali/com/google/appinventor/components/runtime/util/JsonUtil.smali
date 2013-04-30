.class public Lcom/google/appinventor/components/runtime/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    const-string v1, "null"

    .line 150
    .end local p0
    :goto_0
    return-object v1

    .line 129
    .restart local p0
    :cond_0
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 130
    check-cast p0, Lorg/json/JSONObject;

    .end local p0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 133
    .restart local p0
    :cond_1
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    .line 134
    check-cast p0, Lorg/json/JSONArray;

    .end local p0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 137
    .restart local p0
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_6
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_7

    move-object v1, p0

    .line 147
    goto :goto_0

    .line 150
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    if-eqz p0, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 155
    :cond_0
    const-string v7, "null"

    .line 190
    .end local p0
    :goto_0
    return-object v7

    .line 157
    .restart local p0
    :cond_1
    instance-of v7, p0, Lgnu/lists/FString;

    if-eqz v7, :cond_2

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 160
    :cond_2
    instance-of v7, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v7, :cond_3

    .line 161
    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local p0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 170
    .restart local p0
    :cond_3
    instance-of v7, p0, Lgnu/math/IntFraction;

    if-eqz v7, :cond_4

    .line 171
    check-cast p0, Lgnu/math/IntFraction;

    .end local p0
    invoke-virtual {p0}, Lgnu/math/IntFraction;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v7}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 173
    .restart local p0
    :cond_4
    instance-of v7, p0, Ljava/lang/Number;

    if-eqz v7, :cond_5

    .line 174
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-static {p0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 176
    .restart local p0
    :cond_5
    instance-of v7, p0, Ljava/lang/Boolean;

    if-eqz v7, :cond_6

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 179
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v7, "["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v6, ""

    .line 183
    .local v6, separator:Ljava/lang/String;
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_7

    aget-object v4, v1, v2

    .line 184
    .local v4, o:Ljava/lang/Object;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v6, ","

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    .end local v4           #o:Ljava/lang/Object;
    :cond_7
    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 190
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #separator:Ljava/lang/String;
    .restart local p0
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .parameter "jArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, returnList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object v1
.end method

.method public static getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .parameter "jObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v5, returnList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 91
    .local v2, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v3, keysList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 97
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, key:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v4, nestedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #nestedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    return-object v5
.end method

.method public static getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 194
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    const-string v1, ""

    .line 212
    :goto_0
    return-object v1

    .line 201
    :cond_1
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v1, v2

    .line 204
    goto :goto_0

    .line 205
    :cond_3
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    :cond_4
    move-object v1, v0

    .line 208
    goto :goto_0

    .line 209
    :cond_5
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_6

    .line 210
    check-cast v0, Lorg/json/JSONArray;

    .end local v0           #value:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 211
    .restart local v0       #value:Ljava/lang/Object;
    :cond_6
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    .line 212
    check-cast v0, Lorg/json/JSONObject;

    .end local v0           #value:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 214
    .restart local v0       #value:Ljava/lang/Object;
    :cond_7
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Invalid JSON string."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .parameter "jArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, returnList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, val:Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v2           #val:Ljava/lang/String;
    :cond_0
    return-object v1
.end method
