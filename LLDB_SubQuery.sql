SELECT
    M.ItemName AS MenuName
FROM
    Menu M
WHERE
    M.MenuID = ANY(
        SELECT
            O.MenuId
        FROM
            Orders O
        WHERE
            O.quantity > 2
    );